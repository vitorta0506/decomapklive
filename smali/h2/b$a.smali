.class public final Lh2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh2/b$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lh2/b$a;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lh2/b$a;->c:J

    .line 5
    iput-wide p5, p0, Lh2/b$a;->d:J

    return-void
.end method
