.class Lcom/guochao/faceshow/views/wheelview/WheelView$b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/wheelview/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/wheelview/WheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$b;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$b;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->s(Z)V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$b;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->s(Z)V

    return-void
.end method
