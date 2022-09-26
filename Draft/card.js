function card(link, image, title, context) {
    document.write(
        `<div class="card" href=` + link + `>
        <img src=` + image + ` class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">` + title + `</h5>
            <p class="card-text">` + context + `.</p>
            <p class="card-text">` + context + `.</p>
        </div>
    </div>
    `);

}