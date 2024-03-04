.class public final Lcom/google/common/io/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/i$b;
    }
.end annotation


# static fields
.field private static final a:Lw5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw5/a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/io/i$a;

    invoke-direct {v0}, Lcom/google/common/io/i$a;-><init>()V

    sput-object v0, Lcom/google/common/io/i;->a:Lw5/a;

    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/google/common/io/b;
    .locals 2

    new-instance v0, Lcom/google/common/io/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/io/i$b;-><init>(Ljava/io/File;Lcom/google/common/io/h;)V

    return-object v0
.end method

.method public static b(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/d;
    .locals 0

    invoke-static {p0}, Lcom/google/common/io/i;->a(Ljava/io/File;)Lcom/google/common/io/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/io/b;->a(Ljava/nio/charset/Charset;)Lcom/google/common/io/d;

    move-result-object p0

    return-object p0
.end method
