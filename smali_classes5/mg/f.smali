.class public interface abstract Lmg/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/nio/channels/SelectableChannel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/nio/channels/SelectableChannel;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract b(Ljava/nio/channels/SelectableChannel;Ljava/nio/channels/SelectionKey;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/nio/channels/SelectionKey;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
