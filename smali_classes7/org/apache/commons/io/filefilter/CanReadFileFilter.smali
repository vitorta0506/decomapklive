.class public Lorg/apache/commons/io/filefilter/CanReadFileFilter;
.super Lorg/apache/commons/io/filefilter/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_READ:Lorg/apache/commons/io/filefilter/b;

.field public static final CAN_READ:Lorg/apache/commons/io/filefilter/b;

.field public static final READ_ONLY:Lorg/apache/commons/io/filefilter/b;

.field private static final serialVersionUID:J = 0x2c214a929094a84dL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/CanReadFileFilter;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/CanReadFileFilter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->CAN_READ:Lorg/apache/commons/io/filefilter/b;

    .line 2
    new-instance v1, Lorg/apache/commons/io/filefilter/NotFileFilter;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/filefilter/NotFileFilter;-><init>(Lorg/apache/commons/io/filefilter/b;)V

    sput-object v1, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->CANNOT_READ:Lorg/apache/commons/io/filefilter/b;

    .line 3
    new-instance v1, Lorg/apache/commons/io/filefilter/AndFileFilter;

    sget-object v2, Lorg/apache/commons/io/filefilter/CanWriteFileFilter;->CANNOT_WRITE:Lorg/apache/commons/io/filefilter/b;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Lorg/apache/commons/io/filefilter/b;Lorg/apache/commons/io/filefilter/b;)V

    sput-object v1, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->READ_ONLY:Lorg/apache/commons/io/filefilter/b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/a;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p1

    return p1
.end method
