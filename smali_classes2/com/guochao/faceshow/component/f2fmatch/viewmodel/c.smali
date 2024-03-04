.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/viewmodel/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/c;->a:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    iput p2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/c;->b:I

    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/c;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/c;->a:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/c;->b:I

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/c;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->b(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
