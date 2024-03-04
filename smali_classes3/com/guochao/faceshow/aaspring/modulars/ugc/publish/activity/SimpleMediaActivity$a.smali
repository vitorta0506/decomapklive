.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;)Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;)Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e2()V

    :cond_0
    return-void
.end method
