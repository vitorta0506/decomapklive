.class Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$a;->a:Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$a;->a:Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbNotNeighborhood:Landroid/widget/RadioButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$a;->a:Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbOnlyToFriends:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$a;->a:Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbClose:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$a;->a:Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;

    const-string/jumbo p1, "userId"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "2"

    const-string v5, "2"

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->b0(Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
