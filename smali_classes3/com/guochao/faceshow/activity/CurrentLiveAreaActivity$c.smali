.class Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;
.super Lcom/guochao/faceshow/utils/AAComAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/utils/AAComAdapter<",
        "Lcom/guochao/faceshow/bean/CountryData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/utils/AAComAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/CountryData;)V
    .locals 4

    const v0, 0x7f0a0583

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->getImage(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/CountryData;->getLogo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    const v3, 0x7f0f0122

    invoke-static {v1, v0, v3, v2}, Lhc/a;->l(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/CountryData;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0c1c

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->setText(ILjava/lang/String;)Lcom/guochao/faceshow/utils/AAViewHolder;

    const v0, 0x7f0a09af

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01f4

    .line 5
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/CountryData;->getContent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->i0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    invoke-static {v1, p2}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->d0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;Lcom/guochao/faceshow/bean/CountryData;)Lcom/guochao/faceshow/bean/CountryData;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    invoke-static {v1, p1}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->l0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :goto_0
    new-instance v1, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c$a;-><init>(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;Landroid/widget/ImageView;Lcom/guochao/faceshow/bean/CountryData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/utils/AAViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/bean/CountryData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;->a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/CountryData;)V

    return-void
.end method
