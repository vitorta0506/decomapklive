.class public final synthetic Le1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Le1/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le1/b;

    invoke-direct {v0}, Le1/b;-><init>()V

    sput-object v0, Le1/b;->a:Le1/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->c(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
