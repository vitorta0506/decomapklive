.class Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->F0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Z

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Ljava/util/Map;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$d;->c:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$d;->a:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$d;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$d;->c:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$d;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/PushUtils;->savePushTag(Landroid/content/Context;Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$d;->c:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$d;->b:Z

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;ZZ)V

    return-void
.end method
