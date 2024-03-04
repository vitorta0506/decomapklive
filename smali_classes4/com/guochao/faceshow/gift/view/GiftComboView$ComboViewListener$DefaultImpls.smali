.class public final Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onComboTimeout2(Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 1
    .param p0    # Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/faceshow/gift/view/GiftComboView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/guochao/faceshow/gift/view/h;->b(Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    return-void
.end method
