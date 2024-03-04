.class La6/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La6/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lh6/c;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lh6/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lh6/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La6/a0$a;->a:Ljava/util/Set;

    .line 3
    iput-object p2, p0, La6/a0$a;->b:Lh6/c;

    return-void
.end method
