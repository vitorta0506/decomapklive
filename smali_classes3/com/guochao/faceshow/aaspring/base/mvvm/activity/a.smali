.class public final synthetic Lcom/guochao/faceshow/aaspring/base/mvvm/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/a;->a:Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/a;->a:Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;->b0(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V

    return-void
.end method
