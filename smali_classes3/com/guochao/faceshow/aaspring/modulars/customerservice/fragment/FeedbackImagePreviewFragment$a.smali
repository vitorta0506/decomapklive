.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackImagePreviewFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackImagePreviewFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackImagePreviewFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackImagePreviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackImagePreviewFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackImagePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoTap(Landroid/widget/ImageView;FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackImagePreviewFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackImagePreviewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackImagePreviewFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackImagePreviewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->k0()V

    :cond_0
    return-void
.end method
