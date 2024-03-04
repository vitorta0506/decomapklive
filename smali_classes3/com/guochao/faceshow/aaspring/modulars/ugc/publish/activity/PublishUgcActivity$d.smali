.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/ObservableScrollView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/views/ObservableScrollView;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->etUgcPublish:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoard(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method
