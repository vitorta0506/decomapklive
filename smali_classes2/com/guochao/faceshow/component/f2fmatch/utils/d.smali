.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/d;->a:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/d;->a:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->d(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;Ljava/lang/String;)V

    return-void
.end method
