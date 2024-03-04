.class Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;->a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/CountryData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/guochao/faceshow/bean/CountryData;

.field final synthetic c:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;Landroid/widget/ImageView;Lcom/guochao/faceshow/bean/CountryData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c$a;->c:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;

    iput-object p2, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c$a;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c$a;->b:Lcom/guochao/faceshow/bean/CountryData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c$a;->c:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c$a;->b:Lcom/guochao/faceshow/bean/CountryData;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->d0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;Lcom/guochao/faceshow/bean/CountryData;)Lcom/guochao/faceshow/bean/CountryData;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c$a;->c:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c$a;->b:Lcom/guochao/faceshow/bean/CountryData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->k0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c$a;->c:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c$a;->a:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->l0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c$a;->c:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
