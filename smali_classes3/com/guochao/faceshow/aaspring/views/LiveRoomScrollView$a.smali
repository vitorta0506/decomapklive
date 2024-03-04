.class Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$a;
.super Landroid/widget/Scroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$a;->a:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;

    invoke-direct {p0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0x64

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
