.class public final synthetic Lcom/opensource/svgaplayer/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic a:Lcom/opensource/svgaplayer/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opensource/svgaplayer/k;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/k;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/k;->a:Lcom/opensource/svgaplayer/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/opensource/svgaplayer/SVGAParser;->f(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
