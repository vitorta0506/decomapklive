.class Lcom/google/re2j/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/re2j/i$b;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/google/re2j/i$b;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/re2j/i$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(TF;TS;)",
            "Lcom/google/re2j/i$b<",
            "TF;TS;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/re2j/i$b;

    invoke-direct {v0, p0, p1}, Lcom/google/re2j/i$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
