.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;->a:Landroid/view/View$OnClickListener;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;->b:Landroid/view/View;

    return-void
.end method
