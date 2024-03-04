.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e$a;
.super Lka/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;->onNext(Lte/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;

    invoke-direct {p0}, Lka/a$d;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lte/a;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lka/a$d;->e(Lte/a;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;->v0(Landroid/app/Activity;Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;I)V

    return-void
.end method
