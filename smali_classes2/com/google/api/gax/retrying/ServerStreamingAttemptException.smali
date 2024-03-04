.class public Lcom/google/api/gax/retrying/ServerStreamingAttemptException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final canResume:Z

.field private final seenResponses:Z


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iput-boolean p2, p0, Lcom/google/api/gax/retrying/ServerStreamingAttemptException;->canResume:Z

    .line 3
    iput-boolean p3, p0, Lcom/google/api/gax/retrying/ServerStreamingAttemptException;->seenResponses:Z

    return-void
.end method


# virtual methods
.method public canResume()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/api/gax/retrying/ServerStreamingAttemptException;->canResume:Z

    return v0
.end method

.method public hasSeenResponses()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/api/gax/retrying/ServerStreamingAttemptException;->seenResponses:Z

    return v0
.end method
