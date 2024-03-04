.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$b;
.super Lcom/guochao/faceshow/aaspring/views/v$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v$d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstIconClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;)V

    return-void
.end method
