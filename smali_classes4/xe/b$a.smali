.class Lxe/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Lxe/b$a;


# direct methods
.method protected constructor <init>(IILjava/lang/Object;Lxe/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lxe/b$a;->a:I

    .line 3
    iput p2, p0, Lxe/b$a;->b:I

    .line 4
    iput-object p3, p0, Lxe/b$a;->c:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lxe/b$a;->d:Lxe/b$a;

    return-void
.end method
