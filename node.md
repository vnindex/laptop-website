<div id="slider">
    <p href="#" class="control next"><i class="fas fa-chevron-right"></i></p>
    <p href="#" class="control prev"><i class="fas fa-chevron-left"></i></p>
    <ul>
        @foreach ($banners as $ban)
        <a href="#">
            <li>
                <img width="100%" src="images/banners/{{ $ban->ban_image }}" alt="">
            </li>
        </a>
        @endforeach
    </ul>
</div>