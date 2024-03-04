.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Landroidx/core/view/GestureDetectorCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
