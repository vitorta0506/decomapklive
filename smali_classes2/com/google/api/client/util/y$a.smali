.class public final Lcom/google/api/client/util/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/util/y$a;->a:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/api/client/util/y$a;->b:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/util/y$a;->b:[B

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/util/y$a;->a:Ljava/lang/String;

    return-object v0
.end method
