.class public final Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity$viewBindingByActivity$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;->viewBindingByActivity()Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002\"\u0008\u0008\u0001\u0010\u0003*\u00020\u0004\"\u000e\u0008\u0002\u0010\u0005*\u0008\u0012\u0004\u0012\u0002H\u00030\u0006H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Landroidx/viewbinding/ViewBinding;",
        "M",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "VM",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "invoke",
        "()Landroidx/viewbinding/ViewBinding;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity<",
            "TM;TVM;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity<",
            "TM;TVM;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity$viewBindingByActivity$1;->this$0:Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/viewbinding/ViewBinding;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x4

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Landroidx/viewbinding/ViewBinding;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/view/ViewGroup;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string v4, "inflate"

    .line 3
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity$viewBindingByActivity$1;->this$0:Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity$viewBindingByActivity$1;->this$0:Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v7

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity$viewBindingByActivity$1;->invoke()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    return-object v0
.end method
