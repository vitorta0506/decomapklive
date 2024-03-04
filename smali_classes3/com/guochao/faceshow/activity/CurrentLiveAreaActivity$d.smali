.class Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$d;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

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
    iget-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$d;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$d;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->m0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)Lcom/guochao/faceshow/utils/AAComAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$d;->a:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAComAdapter;->resetData(Ljava/util/List;)V

    return-void
.end method
