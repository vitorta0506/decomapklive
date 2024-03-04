.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

.field public final synthetic b:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;Ljava/util/concurrent/ArrayBlockingQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/f;->a:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/f;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/f;->a:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/f;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->a(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;Ljava/util/concurrent/ArrayBlockingQueue;)V

    return-void
.end method
