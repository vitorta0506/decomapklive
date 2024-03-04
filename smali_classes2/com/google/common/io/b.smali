.class public abstract Lcom/google/common/io/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/b$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/charset/Charset;)Lcom/google/common/io/d;
    .locals 1

    new-instance v0, Lcom/google/common/io/b$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/b$a;-><init>(Lcom/google/common/io/b;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public abstract b()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
