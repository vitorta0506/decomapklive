.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/common/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/l;->a:Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/l;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/l;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/l;->a:Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/l;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/l;->c:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;->a(Lcom/guochao/faceshow/databinding/LayoutHourRankAnimBinding;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
