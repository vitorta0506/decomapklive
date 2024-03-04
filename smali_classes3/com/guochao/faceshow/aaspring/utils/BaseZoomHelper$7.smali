.class Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$7;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$7;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->save(Landroid/view/View;)V

    return-void
.end method
