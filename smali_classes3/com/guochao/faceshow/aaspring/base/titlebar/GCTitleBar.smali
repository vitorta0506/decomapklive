.class public interface abstract Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;,
        Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;,
        Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001:\u0002\u0019\u001aJ\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0012\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0012\u0010\u000e\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H&J\u0012\u0010\u000e\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u000cH\u0016J\u0012\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&J\u0012\u0010\u0012\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u000cH&J\u0012\u0010\u0016\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000cH&J\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;",
        "",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "addMenuItem",
        "",
        "menuItem",
        "Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;",
        "findMenuItem",
        "id",
        "",
        "removeMenuItem",
        "setNavigationIcon",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "icon",
        "setTitle",
        "title",
        "",
        "strId",
        "setTitleColor",
        "color",
        "updateMenuItem",
        "MenuCallback",
        "TitleBarCallback",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract addMenuItem(Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract findMenuItem(I)Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract removeMenuItem(Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setNavigationIcon(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
.end method

.method public abstract setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setTitle(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setTitleColor(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract updateMenuItem(Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
