.class public Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$FragmentAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentAdapter"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$FragmentAdapter;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$FragmentAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$FragmentAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackImagePreviewFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackImagePreviewFragment;

    move-result-object p1

    return-object p1
.end method
