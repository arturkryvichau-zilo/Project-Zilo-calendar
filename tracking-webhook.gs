/**
 * Zilo — Field Tracking Webhook
 * Deploy as: Web App → Execute as: Me → Who has access: Anyone
 */

const SHEET_NAME = 'Field Tracking';

function doPost(e) {
  try {
    const data = JSON.parse(e.postData.contents);
    const sheet = getOrCreateSheet();
    sheet.appendRow([
      new Date(data.timestamp || Date.now()),
      data.session_id  || '',
      data.field_name  || '',
      data.field_value || ''
    ]);
    return buildResponse({ status: 'ok' });
  } catch (err) {
    return buildResponse({ status: 'error', message: err.message });
  }
}

// Simple health-check — visit the URL in browser to confirm it's running
function doGet(e) {
  return buildResponse({ status: 'ok', message: 'Webhook is running' });
}

function getOrCreateSheet() {
  const ss = SpreadsheetApp.getActiveSpreadsheet();
  let sheet = ss.getSheetByName(SHEET_NAME);
  if (!sheet) {
    sheet = ss.insertSheet(SHEET_NAME);
    sheet.appendRow(['Timestamp', 'Session ID', 'Field Name', 'Field Value']);
    sheet.getRange('1:1').setFontWeight('bold');
    sheet.setFrozenRows(1);
  }
  return sheet;
}

function buildResponse(data) {
  const output = ContentService.createTextOutput(JSON.stringify(data));
  output.setMimeType(ContentService.MimeType.JSON);
  return output;
}
