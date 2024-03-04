.class public Lo5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/i;


# instance fields
.field private final a:Lcom/google/api/gax/retrying/RetrySettings;

.field private final b:Lk5/a;


# direct methods
.method public constructor <init>(Lcom/google/api/gax/retrying/RetrySettings;Lk5/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/gax/retrying/RetrySettings;

    iput-object p1, p0, Lo5/b;->a:Lcom/google/api/gax/retrying/RetrySettings;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk5/a;

    iput-object p1, p0, Lo5/b;->b:Lk5/a;

    return-void
.end method
