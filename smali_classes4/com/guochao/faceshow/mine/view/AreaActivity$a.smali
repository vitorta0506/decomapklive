.class Lcom/guochao/faceshow/mine/view/AreaActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/AreaActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/AreaActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/AreaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$a;->a:Lcom/guochao/faceshow/mine/view/AreaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$a;->a:Lcom/guochao/faceshow/mine/view/AreaActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/AreaActivity;->b:Lwa/b;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lwa/b;->b()Lcom/guochao/faceshow/bean/CountryData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$a;->a:Lcom/guochao/faceshow/mine/view/AreaActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCountryId()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/mine/view/AreaActivity;->b0(Lcom/guochao/faceshow/mine/view/AreaActivity;ILjava/lang/String;Lcom/guochao/faceshow/bean/CountryData;)V

    :cond_0
    return-void
.end method
