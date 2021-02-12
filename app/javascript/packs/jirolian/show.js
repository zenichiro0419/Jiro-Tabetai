$(function () {
  // ↓タブをクリックした時の処理↓
  $(".tab").click(function () {
    // ↓現在アクティブなタブを切り替え↓
    $(".tab-active").removeClass("tab-active");
    // ↓タブをアクティブにする↓
    $(this).addClass("tab-active");
    // ↓現在アクティブなタブの中身を非表示
    $(".box-show").removeClass("box-show");
    // ↓クリックしたタブから順番を取得↓
    const index = $(this).index();
    // ↓クリックしたタブと同じ順番のコンテンツを表示↓
    $(".tabbox").eq(index).addClass("box-show");
  });
});
