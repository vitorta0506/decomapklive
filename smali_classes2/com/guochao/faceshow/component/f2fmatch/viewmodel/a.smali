.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/viewmodel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/a;->a:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/a;->a:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    check-cast p1, Lcom/guochao/faceshow/session/model/UserSessionModel;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->e(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lcom/guochao/faceshow/session/model/UserSessionModel;)V

    return-void
.end method
