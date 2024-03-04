.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V
    .locals 0

    return-void
.end method

.method public onReceiveLocation(Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$f;->a:I

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;->mEditTextSearch:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;ILjava/lang/String;)V

    return-void
.end method
