module.exports = {
    contents: [ "_sidebar.md" ], // array of "table of contents" files path
    pathToPublic: "wiki.pdf", // path where pdf will stored
    pdfOptions: {
        format: 'A4',
        margin: {
            top: '1cm',
            left: '1.5cm',
            bottom: '1.75cm',
            right: '0.5cm',
        },
        scale: 0.9,
        preferCSSPageSize: true
    }, // reference: https://github.com/GoogleChrome/puppeteer/blob/master/docs/api.md#pagepdfoptions,
    removeTemp: true, // remove generated .md and .html or not
    emulateMedia: "screen", // mediaType, emulating by puppeteer for rendering pdf, 'print' by default (reference: https://github.com/GoogleChrome/puppeteer/blob/master/docs/api.md#pageemulatemediamediatype)
}