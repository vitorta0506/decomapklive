.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->q()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Lcom/guochao/faceshow/views/Love;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Lcom/guochao/faceshow/views/Love;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/Love;->a(Landroid/view/MotionEvent;)V

    .line 8
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
