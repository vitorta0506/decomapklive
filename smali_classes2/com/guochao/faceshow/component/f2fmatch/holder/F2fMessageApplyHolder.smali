.class public final Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageApplyHolder;
.super Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageApplyHolder;",
        "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
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


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
