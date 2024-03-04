.class public Lcom/twitter/sdk/android/core/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lretrofit2/Response;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lretrofit2/Response;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/twitter/sdk/android/core/i;->b:Lretrofit2/Response;

    return-void
.end method
