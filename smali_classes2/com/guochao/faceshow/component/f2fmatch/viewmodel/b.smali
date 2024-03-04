.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/viewmodel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/b;->a:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/b;->a:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-static {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->f(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)V

    return-void
.end method
