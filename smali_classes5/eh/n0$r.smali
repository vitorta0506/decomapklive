.class abstract Leh/n0$r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "r"
.end annotation


# static fields
.field static final a:Leh/n0$r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leh/n0$r$a;

    invoke-direct {v0}, Leh/n0$r$a;-><init>()V

    sput-object v0, Leh/n0$r;->a:Leh/n0$r;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Leh/j0$d;)Lio/grpc/q0;
.end method
