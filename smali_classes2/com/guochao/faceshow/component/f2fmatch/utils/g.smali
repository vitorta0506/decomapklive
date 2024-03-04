.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll5/f;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/g;->a:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/auth/Credentials;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/g;->a:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    invoke-static {v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->c(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)Lcom/google/auth/Credentials;

    move-result-object v0

    return-object v0
.end method
