.class public Lkk/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lkk/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkk/c$a;

    invoke-direct {v0}, Lkk/c$a;-><init>()V

    sput-object v0, Lkk/c$a;->a:Lkk/c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lkk/c$a;
    .locals 1

    sget-object v0, Lkk/c$a;->a:Lkk/c$a;

    return-object v0
.end method
