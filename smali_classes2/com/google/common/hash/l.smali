.class final Lcom/google/common/hash/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/nio/Buffer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method static b(Ljava/nio/Buffer;I)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
