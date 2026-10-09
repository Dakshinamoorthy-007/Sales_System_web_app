// ==============================
// Sales System JavaScript
// ==============================

$(document).ready(function () {

    // Initialize DataTable if present
    if ($("#reportTable").length) {
        $("#reportTable").DataTable({
            pageLength: 10,
            searching: true,
            ordering: true,
            info: true
        });
    }

    // Fade out success/error messages
    $(".success, .error").delay(3000).fadeOut();

});

// ==============================
// File Upload Validation
// ==============================

function validateUpload() {

    var file = document.getElementById("salesFile").value;

    if (file === "") {

        alert("Please select a file.");

        return false;
    }

    var extension = file.split(".").pop().toLowerCase();

    if (extension !== "csv" && extension !== "txt") {

        alert("Only CSV and TXT files are allowed.");

        return false;
    }

    return true;
}