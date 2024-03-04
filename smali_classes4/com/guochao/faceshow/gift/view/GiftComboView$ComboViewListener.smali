.class public interface abstract Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/gift/view/GiftComboView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ComboViewListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;",
        "",
        "onCombo",
        "",
        "view",
        "Lcom/guochao/faceshow/gift/view/GiftComboView;",
        "combo",
        "",
        "onComboTimeout",
        "onComboTimeout2",
        "app_GooglePlayRelease"
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
.method public abstract onCombo(Lcom/guochao/faceshow/gift/view/GiftComboView;I)V
    .param p1    # Lcom/guochao/faceshow/gift/view/GiftComboView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onComboTimeout(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .param p1    # Lcom/guochao/faceshow/gift/view/GiftComboView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "\u70b9\u51fb\u5176\u4ed6\u7684\u6309\u94ae\u5bfc\u81f4\u88ab\u91cd\u7f6e\u7684\u65f6\u5019\u4e5f\u4f1a\u89e6\u53d1\u8fd9\u4e2a\u65b9\u6cd5\uff0c\u4e0d\u51c6\u786e"
    .end annotation
.end method

.method public abstract onComboTimeout2(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .param p1    # Lcom/guochao/faceshow/gift/view/GiftComboView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
