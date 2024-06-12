document.addEventListener('DOMContentLoaded', function() {
    const exportPDFBtn = document.getElementById('export-btn-pdf');

    exportPDFBtn.addEventListener('click', function() {
        const librosTable = document.getElementById('libros_table');
        toPDF(librosTable);
    });
});


const toPDF = function(element) {
    const htmlContent = `
        <!DOCTYPE html>
        <html>
        <head>
            <title>Libros</title>
            <link rel="stylesheet" type="text/css" href="css/tables.css">
        </head>
        <body>
            ${element.innerHTML}
        </body>
        </html>`;

    const newWindow = window.open();
    newWindow.document.write(htmlContent);

    setTimeout(() => {
        newWindow.print();
        newWindow.close();
    }, 400);
}
