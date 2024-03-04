.class Lcom/guochao/faceshow/mine/view/AreaActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/AreaActivity;->k0()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$d;->a:Lcom/guochao/faceshow/mine/view/AreaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$d;->a:Lcom/guochao/faceshow/mine/view/AreaActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/AreaActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/AreaActivity$d;->a:Lcom/guochao/faceshow/mine/view/AreaActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/mine/view/AreaActivity;->e0(Lcom/guochao/faceshow/mine/view/AreaActivity;Ljava/util/List;)V

    :cond_0
    return-void
.end method
