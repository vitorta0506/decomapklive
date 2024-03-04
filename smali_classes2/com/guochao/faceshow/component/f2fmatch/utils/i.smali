.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/i;->a:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/i;->a:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    invoke-static {v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->a(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V

    return-void
.end method
