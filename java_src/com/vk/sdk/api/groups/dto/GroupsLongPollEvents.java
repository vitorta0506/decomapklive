package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000'\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0003\b\u0099\u0001\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B¡\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u0012\u0006\u0010\u0017\u001a\u00020\u0003\u0012\u0006\u0010\u0018\u001a\u00020\u0003\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u0012\u0006\u0010\u001a\u001a\u00020\u0003\u0012\u0006\u0010\u001b\u001a\u00020\u0003\u0012\u0006\u0010\u001c\u001a\u00020\u0003\u0012\u0006\u0010\u001d\u001a\u00020\u0003\u0012\u0006\u0010\u001e\u001a\u00020\u0003\u0012\u0006\u0010\u001f\u001a\u00020\u0003\u0012\u0006\u0010 \u001a\u00020\u0003\u0012\u0006\u0010!\u001a\u00020\u0003\u0012\u0006\u0010\"\u001a\u00020\u0003\u0012\u0006\u0010#\u001a\u00020\u0003\u0012\u0006\u0010$\u001a\u00020\u0003\u0012\u0006\u0010%\u001a\u00020\u0003\u0012\u0006\u0010&\u001a\u00020\u0003\u0012\u0006\u0010'\u001a\u00020\u0003\u0012\u0006\u0010(\u001a\u00020\u0003\u0012\u0006\u0010)\u001a\u00020\u0003\u0012\u0006\u0010*\u001a\u00020\u0003\u0012\u0006\u0010+\u001a\u00020\u0003\u0012\u0006\u0010,\u001a\u00020\u0003\u0012\u0006\u0010-\u001a\u00020\u0003\u0012\u0006\u0010.\u001a\u00020\u0003\u0012\u0006\u0010/\u001a\u00020\u0003\u0012\u0006\u00100\u001a\u00020\u0003\u0012\u0006\u00101\u001a\u00020\u0003\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u00105J\t\u0010i\u001a\u00020\u0003HÆ\u0003J\t\u0010j\u001a\u00020\u0003HÆ\u0003J\t\u0010k\u001a\u00020\u0003HÆ\u0003J\t\u0010l\u001a\u00020\u0003HÆ\u0003J\t\u0010m\u001a\u00020\u0003HÆ\u0003J\t\u0010n\u001a\u00020\u0003HÆ\u0003J\t\u0010o\u001a\u00020\u0003HÆ\u0003J\t\u0010p\u001a\u00020\u0003HÆ\u0003J\t\u0010q\u001a\u00020\u0003HÆ\u0003J\t\u0010r\u001a\u00020\u0003HÆ\u0003J\t\u0010s\u001a\u00020\u0003HÆ\u0003J\t\u0010t\u001a\u00020\u0003HÆ\u0003J\t\u0010u\u001a\u00020\u0003HÆ\u0003J\t\u0010v\u001a\u00020\u0003HÆ\u0003J\t\u0010w\u001a\u00020\u0003HÆ\u0003J\t\u0010x\u001a\u00020\u0003HÆ\u0003J\t\u0010y\u001a\u00020\u0003HÆ\u0003J\t\u0010z\u001a\u00020\u0003HÆ\u0003J\t\u0010{\u001a\u00020\u0003HÆ\u0003J\t\u0010|\u001a\u00020\u0003HÆ\u0003J\t\u0010}\u001a\u00020\u0003HÆ\u0003J\t\u0010~\u001a\u00020\u0003HÆ\u0003J\t\u0010\u007f\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0080\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0081\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0082\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0083\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0084\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0085\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0086\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0088\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0089\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008a\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008b\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008c\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008d\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008e\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008f\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0090\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0091\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0092\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\n\u0010\u0095\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\n\u0010\u0097\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0098\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0099\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u009a\u0001\u001a\u00020\u0003HÆ\u0003J\u0084\u0004\u0010\u009b\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u00032\b\b\u0002\u0010 \u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\u00032\b\b\u0002\u0010\"\u001a\u00020\u00032\b\b\u0002\u0010#\u001a\u00020\u00032\b\b\u0002\u0010$\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020\u00032\b\b\u0002\u0010&\u001a\u00020\u00032\b\b\u0002\u0010'\u001a\u00020\u00032\b\b\u0002\u0010(\u001a\u00020\u00032\b\b\u0002\u0010)\u001a\u00020\u00032\b\b\u0002\u0010*\u001a\u00020\u00032\b\b\u0002\u0010+\u001a\u00020\u00032\b\b\u0002\u0010,\u001a\u00020\u00032\b\b\u0002\u0010-\u001a\u00020\u00032\b\b\u0002\u0010.\u001a\u00020\u00032\b\b\u0002\u0010/\u001a\u00020\u00032\b\b\u0002\u00100\u001a\u00020\u00032\b\b\u0002\u00101\u001a\u00020\u00032\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0016\u0010\u009c\u0001\u001a\u00030\u009d\u00012\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u000b\u0010\u009f\u0001\u001a\u00030 \u0001HÖ\u0001J\u000b\u0010¡\u0001\u001a\u00030¢\u0001HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u00107R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u00107R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u00107R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u00107R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u00107R\u0016\u00100\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u00107R\u0016\u00101\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u00107R\u0016\u0010-\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u00107R\u0016\u0010+\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u00107R\u0016\u0010.\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b@\u00107R\u0016\u0010/\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bA\u00107R\u0016\u0010,\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u00107R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bC\u00107R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u00107R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bE\u00107R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bF\u00107R\u0016\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bG\u00107R\u0018\u00102\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bH\u00107R\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bI\u00107R\u0016\u0010\u000e\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u00107R\u0016\u0010\u000f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bK\u00107R\u0016\u0010\u0010\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bL\u00107R\u0018\u00104\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bM\u00107R\u0018\u00103\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bN\u00107R\u0016\u0010\u0011\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bO\u00107R\u0016\u0010\u0012\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bP\u00107R\u0016\u0010\u0017\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bQ\u00107R\u0016\u0010\u0013\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bR\u00107R\u0016\u0010\u0014\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bS\u00107R\u0016\u0010\u0015\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bT\u00107R\u0016\u0010\u0016\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bU\u00107R\u0016\u0010\u0018\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bV\u00107R\u0016\u0010\u0019\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bW\u00107R\u0016\u0010\u001a\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bX\u00107R\u0016\u0010\u001b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bY\u00107R\u0016\u0010\u001c\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bZ\u00107R\u0016\u0010\u001d\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b[\u00107R\u0016\u0010\u001e\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\\\u00107R\u0016\u0010\u001f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b]\u00107R\u0016\u0010 \u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b^\u00107R\u0016\u0010!\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b_\u00107R\u0016\u0010\"\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b`\u00107R\u0016\u0010#\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\ba\u00107R\u0016\u0010$\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bb\u00107R\u0016\u0010%\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bc\u00107R\u0016\u0010&\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bd\u00107R\u0016\u0010'\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\be\u00107R\u0016\u0010(\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bf\u00107R\u0016\u0010)\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bg\u00107R\u0016\u0010*\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bh\u00107¨\u0006£\u0001"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsLongPollEvents;", "", "audioNew", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "boardPostDelete", "boardPostEdit", "boardPostNew", "boardPostRestore", "groupChangePhoto", "groupChangeSettings", "groupJoin", "groupLeave", "groupOfficersEdit", "marketCommentDelete", "marketCommentEdit", "marketCommentNew", "marketCommentRestore", "messageAllow", "messageDeny", "messageNew", "messageRead", "messageReply", "messageTypingState", "messageEdit", "photoCommentDelete", "photoCommentEdit", "photoCommentNew", "photoCommentRestore", "photoNew", "pollVoteNew", "userBlock", "userUnblock", "videoCommentDelete", "videoCommentEdit", "videoCommentNew", "videoCommentRestore", "videoNew", "wallPostNew", "wallReplyDelete", "wallReplyEdit", "wallReplyNew", "wallReplyRestore", "wallRepost", "donutSubscriptionCreate", "donutSubscriptionProlonged", "donutSubscriptionCancelled", "donutSubscriptionExpired", "donutSubscriptionPriceChanged", "donutMoneyWithdraw", "donutMoneyWithdrawError", "leadFormsNew", "marketOrderNew", "marketOrderEdit", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "getAudioNew", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getBoardPostDelete", "getBoardPostEdit", "getBoardPostNew", "getBoardPostRestore", "getDonutMoneyWithdraw", "getDonutMoneyWithdrawError", "getDonutSubscriptionCancelled", "getDonutSubscriptionCreate", "getDonutSubscriptionExpired", "getDonutSubscriptionPriceChanged", "getDonutSubscriptionProlonged", "getGroupChangePhoto", "getGroupChangeSettings", "getGroupJoin", "getGroupLeave", "getGroupOfficersEdit", "getLeadFormsNew", "getMarketCommentDelete", "getMarketCommentEdit", "getMarketCommentNew", "getMarketCommentRestore", "getMarketOrderEdit", "getMarketOrderNew", "getMessageAllow", "getMessageDeny", "getMessageEdit", "getMessageNew", "getMessageRead", "getMessageReply", "getMessageTypingState", "getPhotoCommentDelete", "getPhotoCommentEdit", "getPhotoCommentNew", "getPhotoCommentRestore", "getPhotoNew", "getPollVoteNew", "getUserBlock", "getUserUnblock", "getVideoCommentDelete", "getVideoCommentEdit", "getVideoCommentNew", "getVideoCommentRestore", "getVideoNew", "getWallPostNew", "getWallReplyDelete", "getWallReplyEdit", "getWallReplyNew", "getWallReplyRestore", "getWallRepost", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component4", "component40", "component41", "component42", "component43", "component44", "component45", "component46", "component47", "component48", "component49", "component5", "component50", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsLongPollEvents {
    @SerializedName("audio_new")
    @NotNull
    private final BaseBoolInt audioNew;
    @SerializedName("board_post_delete")
    @NotNull
    private final BaseBoolInt boardPostDelete;
    @SerializedName("board_post_edit")
    @NotNull
    private final BaseBoolInt boardPostEdit;
    @SerializedName("board_post_new")
    @NotNull
    private final BaseBoolInt boardPostNew;
    @SerializedName("board_post_restore")
    @NotNull
    private final BaseBoolInt boardPostRestore;
    @SerializedName("donut_money_withdraw")
    @NotNull
    private final BaseBoolInt donutMoneyWithdraw;
    @SerializedName("donut_money_withdraw_error")
    @NotNull
    private final BaseBoolInt donutMoneyWithdrawError;
    @SerializedName("donut_subscription_cancelled")
    @NotNull
    private final BaseBoolInt donutSubscriptionCancelled;
    @SerializedName("donut_subscription_create")
    @NotNull
    private final BaseBoolInt donutSubscriptionCreate;
    @SerializedName("donut_subscription_expired")
    @NotNull
    private final BaseBoolInt donutSubscriptionExpired;
    @SerializedName("donut_subscription_price_changed")
    @NotNull
    private final BaseBoolInt donutSubscriptionPriceChanged;
    @SerializedName("donut_subscription_prolonged")
    @NotNull
    private final BaseBoolInt donutSubscriptionProlonged;
    @SerializedName("group_change_photo")
    @NotNull
    private final BaseBoolInt groupChangePhoto;
    @SerializedName("group_change_settings")
    @NotNull
    private final BaseBoolInt groupChangeSettings;
    @SerializedName("group_join")
    @NotNull
    private final BaseBoolInt groupJoin;
    @SerializedName("group_leave")
    @NotNull
    private final BaseBoolInt groupLeave;
    @SerializedName("group_officers_edit")
    @NotNull
    private final BaseBoolInt groupOfficersEdit;
    @SerializedName("lead_forms_new")
    @Nullable
    private final BaseBoolInt leadFormsNew;
    @SerializedName("market_comment_delete")
    @NotNull
    private final BaseBoolInt marketCommentDelete;
    @SerializedName("market_comment_edit")
    @NotNull
    private final BaseBoolInt marketCommentEdit;
    @SerializedName("market_comment_new")
    @NotNull
    private final BaseBoolInt marketCommentNew;
    @SerializedName("market_comment_restore")
    @NotNull
    private final BaseBoolInt marketCommentRestore;
    @SerializedName("market_order_edit")
    @Nullable
    private final BaseBoolInt marketOrderEdit;
    @SerializedName("market_order_new")
    @Nullable
    private final BaseBoolInt marketOrderNew;
    @SerializedName("message_allow")
    @NotNull
    private final BaseBoolInt messageAllow;
    @SerializedName("message_deny")
    @NotNull
    private final BaseBoolInt messageDeny;
    @SerializedName("message_edit")
    @NotNull
    private final BaseBoolInt messageEdit;
    @SerializedName("message_new")
    @NotNull
    private final BaseBoolInt messageNew;
    @SerializedName("message_read")
    @NotNull
    private final BaseBoolInt messageRead;
    @SerializedName("message_reply")
    @NotNull
    private final BaseBoolInt messageReply;
    @SerializedName("message_typing_state")
    @NotNull
    private final BaseBoolInt messageTypingState;
    @SerializedName("photo_comment_delete")
    @NotNull
    private final BaseBoolInt photoCommentDelete;
    @SerializedName("photo_comment_edit")
    @NotNull
    private final BaseBoolInt photoCommentEdit;
    @SerializedName("photo_comment_new")
    @NotNull
    private final BaseBoolInt photoCommentNew;
    @SerializedName("photo_comment_restore")
    @NotNull
    private final BaseBoolInt photoCommentRestore;
    @SerializedName("photo_new")
    @NotNull
    private final BaseBoolInt photoNew;
    @SerializedName("poll_vote_new")
    @NotNull
    private final BaseBoolInt pollVoteNew;
    @SerializedName("user_block")
    @NotNull
    private final BaseBoolInt userBlock;
    @SerializedName("user_unblock")
    @NotNull
    private final BaseBoolInt userUnblock;
    @SerializedName("video_comment_delete")
    @NotNull
    private final BaseBoolInt videoCommentDelete;
    @SerializedName("video_comment_edit")
    @NotNull
    private final BaseBoolInt videoCommentEdit;
    @SerializedName("video_comment_new")
    @NotNull
    private final BaseBoolInt videoCommentNew;
    @SerializedName("video_comment_restore")
    @NotNull
    private final BaseBoolInt videoCommentRestore;
    @SerializedName("video_new")
    @NotNull
    private final BaseBoolInt videoNew;
    @SerializedName("wall_post_new")
    @NotNull
    private final BaseBoolInt wallPostNew;
    @SerializedName("wall_reply_delete")
    @NotNull
    private final BaseBoolInt wallReplyDelete;
    @SerializedName("wall_reply_edit")
    @NotNull
    private final BaseBoolInt wallReplyEdit;
    @SerializedName("wall_reply_new")
    @NotNull
    private final BaseBoolInt wallReplyNew;
    @SerializedName("wall_reply_restore")
    @NotNull
    private final BaseBoolInt wallReplyRestore;
    @SerializedName("wall_repost")
    @NotNull
    private final BaseBoolInt wallRepost;

    public GroupsLongPollEvents(@NotNull BaseBoolInt audioNew, @NotNull BaseBoolInt boardPostDelete, @NotNull BaseBoolInt boardPostEdit, @NotNull BaseBoolInt boardPostNew, @NotNull BaseBoolInt boardPostRestore, @NotNull BaseBoolInt groupChangePhoto, @NotNull BaseBoolInt groupChangeSettings, @NotNull BaseBoolInt groupJoin, @NotNull BaseBoolInt groupLeave, @NotNull BaseBoolInt groupOfficersEdit, @NotNull BaseBoolInt marketCommentDelete, @NotNull BaseBoolInt marketCommentEdit, @NotNull BaseBoolInt marketCommentNew, @NotNull BaseBoolInt marketCommentRestore, @NotNull BaseBoolInt messageAllow, @NotNull BaseBoolInt messageDeny, @NotNull BaseBoolInt messageNew, @NotNull BaseBoolInt messageRead, @NotNull BaseBoolInt messageReply, @NotNull BaseBoolInt messageTypingState, @NotNull BaseBoolInt messageEdit, @NotNull BaseBoolInt photoCommentDelete, @NotNull BaseBoolInt photoCommentEdit, @NotNull BaseBoolInt photoCommentNew, @NotNull BaseBoolInt photoCommentRestore, @NotNull BaseBoolInt photoNew, @NotNull BaseBoolInt pollVoteNew, @NotNull BaseBoolInt userBlock, @NotNull BaseBoolInt userUnblock, @NotNull BaseBoolInt videoCommentDelete, @NotNull BaseBoolInt videoCommentEdit, @NotNull BaseBoolInt videoCommentNew, @NotNull BaseBoolInt videoCommentRestore, @NotNull BaseBoolInt videoNew, @NotNull BaseBoolInt wallPostNew, @NotNull BaseBoolInt wallReplyDelete, @NotNull BaseBoolInt wallReplyEdit, @NotNull BaseBoolInt wallReplyNew, @NotNull BaseBoolInt wallReplyRestore, @NotNull BaseBoolInt wallRepost, @NotNull BaseBoolInt donutSubscriptionCreate, @NotNull BaseBoolInt donutSubscriptionProlonged, @NotNull BaseBoolInt donutSubscriptionCancelled, @NotNull BaseBoolInt donutSubscriptionExpired, @NotNull BaseBoolInt donutSubscriptionPriceChanged, @NotNull BaseBoolInt donutMoneyWithdraw, @NotNull BaseBoolInt donutMoneyWithdrawError, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3) {
        Intrinsics.checkNotNullParameter(audioNew, "audioNew");
        Intrinsics.checkNotNullParameter(boardPostDelete, "boardPostDelete");
        Intrinsics.checkNotNullParameter(boardPostEdit, "boardPostEdit");
        Intrinsics.checkNotNullParameter(boardPostNew, "boardPostNew");
        Intrinsics.checkNotNullParameter(boardPostRestore, "boardPostRestore");
        Intrinsics.checkNotNullParameter(groupChangePhoto, "groupChangePhoto");
        Intrinsics.checkNotNullParameter(groupChangeSettings, "groupChangeSettings");
        Intrinsics.checkNotNullParameter(groupJoin, "groupJoin");
        Intrinsics.checkNotNullParameter(groupLeave, "groupLeave");
        Intrinsics.checkNotNullParameter(groupOfficersEdit, "groupOfficersEdit");
        Intrinsics.checkNotNullParameter(marketCommentDelete, "marketCommentDelete");
        Intrinsics.checkNotNullParameter(marketCommentEdit, "marketCommentEdit");
        Intrinsics.checkNotNullParameter(marketCommentNew, "marketCommentNew");
        Intrinsics.checkNotNullParameter(marketCommentRestore, "marketCommentRestore");
        Intrinsics.checkNotNullParameter(messageAllow, "messageAllow");
        Intrinsics.checkNotNullParameter(messageDeny, "messageDeny");
        Intrinsics.checkNotNullParameter(messageNew, "messageNew");
        Intrinsics.checkNotNullParameter(messageRead, "messageRead");
        Intrinsics.checkNotNullParameter(messageReply, "messageReply");
        Intrinsics.checkNotNullParameter(messageTypingState, "messageTypingState");
        Intrinsics.checkNotNullParameter(messageEdit, "messageEdit");
        Intrinsics.checkNotNullParameter(photoCommentDelete, "photoCommentDelete");
        Intrinsics.checkNotNullParameter(photoCommentEdit, "photoCommentEdit");
        Intrinsics.checkNotNullParameter(photoCommentNew, "photoCommentNew");
        Intrinsics.checkNotNullParameter(photoCommentRestore, "photoCommentRestore");
        Intrinsics.checkNotNullParameter(photoNew, "photoNew");
        Intrinsics.checkNotNullParameter(pollVoteNew, "pollVoteNew");
        Intrinsics.checkNotNullParameter(userBlock, "userBlock");
        Intrinsics.checkNotNullParameter(userUnblock, "userUnblock");
        Intrinsics.checkNotNullParameter(videoCommentDelete, "videoCommentDelete");
        Intrinsics.checkNotNullParameter(videoCommentEdit, "videoCommentEdit");
        Intrinsics.checkNotNullParameter(videoCommentNew, "videoCommentNew");
        Intrinsics.checkNotNullParameter(videoCommentRestore, "videoCommentRestore");
        Intrinsics.checkNotNullParameter(videoNew, "videoNew");
        Intrinsics.checkNotNullParameter(wallPostNew, "wallPostNew");
        Intrinsics.checkNotNullParameter(wallReplyDelete, "wallReplyDelete");
        Intrinsics.checkNotNullParameter(wallReplyEdit, "wallReplyEdit");
        Intrinsics.checkNotNullParameter(wallReplyNew, "wallReplyNew");
        Intrinsics.checkNotNullParameter(wallReplyRestore, "wallReplyRestore");
        Intrinsics.checkNotNullParameter(wallRepost, "wallRepost");
        Intrinsics.checkNotNullParameter(donutSubscriptionCreate, "donutSubscriptionCreate");
        Intrinsics.checkNotNullParameter(donutSubscriptionProlonged, "donutSubscriptionProlonged");
        Intrinsics.checkNotNullParameter(donutSubscriptionCancelled, "donutSubscriptionCancelled");
        Intrinsics.checkNotNullParameter(donutSubscriptionExpired, "donutSubscriptionExpired");
        Intrinsics.checkNotNullParameter(donutSubscriptionPriceChanged, "donutSubscriptionPriceChanged");
        Intrinsics.checkNotNullParameter(donutMoneyWithdraw, "donutMoneyWithdraw");
        Intrinsics.checkNotNullParameter(donutMoneyWithdrawError, "donutMoneyWithdrawError");
        this.audioNew = audioNew;
        this.boardPostDelete = boardPostDelete;
        this.boardPostEdit = boardPostEdit;
        this.boardPostNew = boardPostNew;
        this.boardPostRestore = boardPostRestore;
        this.groupChangePhoto = groupChangePhoto;
        this.groupChangeSettings = groupChangeSettings;
        this.groupJoin = groupJoin;
        this.groupLeave = groupLeave;
        this.groupOfficersEdit = groupOfficersEdit;
        this.marketCommentDelete = marketCommentDelete;
        this.marketCommentEdit = marketCommentEdit;
        this.marketCommentNew = marketCommentNew;
        this.marketCommentRestore = marketCommentRestore;
        this.messageAllow = messageAllow;
        this.messageDeny = messageDeny;
        this.messageNew = messageNew;
        this.messageRead = messageRead;
        this.messageReply = messageReply;
        this.messageTypingState = messageTypingState;
        this.messageEdit = messageEdit;
        this.photoCommentDelete = photoCommentDelete;
        this.photoCommentEdit = photoCommentEdit;
        this.photoCommentNew = photoCommentNew;
        this.photoCommentRestore = photoCommentRestore;
        this.photoNew = photoNew;
        this.pollVoteNew = pollVoteNew;
        this.userBlock = userBlock;
        this.userUnblock = userUnblock;
        this.videoCommentDelete = videoCommentDelete;
        this.videoCommentEdit = videoCommentEdit;
        this.videoCommentNew = videoCommentNew;
        this.videoCommentRestore = videoCommentRestore;
        this.videoNew = videoNew;
        this.wallPostNew = wallPostNew;
        this.wallReplyDelete = wallReplyDelete;
        this.wallReplyEdit = wallReplyEdit;
        this.wallReplyNew = wallReplyNew;
        this.wallReplyRestore = wallReplyRestore;
        this.wallRepost = wallRepost;
        this.donutSubscriptionCreate = donutSubscriptionCreate;
        this.donutSubscriptionProlonged = donutSubscriptionProlonged;
        this.donutSubscriptionCancelled = donutSubscriptionCancelled;
        this.donutSubscriptionExpired = donutSubscriptionExpired;
        this.donutSubscriptionPriceChanged = donutSubscriptionPriceChanged;
        this.donutMoneyWithdraw = donutMoneyWithdraw;
        this.donutMoneyWithdrawError = donutMoneyWithdrawError;
        this.leadFormsNew = baseBoolInt;
        this.marketOrderNew = baseBoolInt2;
        this.marketOrderEdit = baseBoolInt3;
    }

    @NotNull
    public final BaseBoolInt component1() {
        return this.audioNew;
    }

    @NotNull
    public final BaseBoolInt component10() {
        return this.groupOfficersEdit;
    }

    @NotNull
    public final BaseBoolInt component11() {
        return this.marketCommentDelete;
    }

    @NotNull
    public final BaseBoolInt component12() {
        return this.marketCommentEdit;
    }

    @NotNull
    public final BaseBoolInt component13() {
        return this.marketCommentNew;
    }

    @NotNull
    public final BaseBoolInt component14() {
        return this.marketCommentRestore;
    }

    @NotNull
    public final BaseBoolInt component15() {
        return this.messageAllow;
    }

    @NotNull
    public final BaseBoolInt component16() {
        return this.messageDeny;
    }

    @NotNull
    public final BaseBoolInt component17() {
        return this.messageNew;
    }

    @NotNull
    public final BaseBoolInt component18() {
        return this.messageRead;
    }

    @NotNull
    public final BaseBoolInt component19() {
        return this.messageReply;
    }

    @NotNull
    public final BaseBoolInt component2() {
        return this.boardPostDelete;
    }

    @NotNull
    public final BaseBoolInt component20() {
        return this.messageTypingState;
    }

    @NotNull
    public final BaseBoolInt component21() {
        return this.messageEdit;
    }

    @NotNull
    public final BaseBoolInt component22() {
        return this.photoCommentDelete;
    }

    @NotNull
    public final BaseBoolInt component23() {
        return this.photoCommentEdit;
    }

    @NotNull
    public final BaseBoolInt component24() {
        return this.photoCommentNew;
    }

    @NotNull
    public final BaseBoolInt component25() {
        return this.photoCommentRestore;
    }

    @NotNull
    public final BaseBoolInt component26() {
        return this.photoNew;
    }

    @NotNull
    public final BaseBoolInt component27() {
        return this.pollVoteNew;
    }

    @NotNull
    public final BaseBoolInt component28() {
        return this.userBlock;
    }

    @NotNull
    public final BaseBoolInt component29() {
        return this.userUnblock;
    }

    @NotNull
    public final BaseBoolInt component3() {
        return this.boardPostEdit;
    }

    @NotNull
    public final BaseBoolInt component30() {
        return this.videoCommentDelete;
    }

    @NotNull
    public final BaseBoolInt component31() {
        return this.videoCommentEdit;
    }

    @NotNull
    public final BaseBoolInt component32() {
        return this.videoCommentNew;
    }

    @NotNull
    public final BaseBoolInt component33() {
        return this.videoCommentRestore;
    }

    @NotNull
    public final BaseBoolInt component34() {
        return this.videoNew;
    }

    @NotNull
    public final BaseBoolInt component35() {
        return this.wallPostNew;
    }

    @NotNull
    public final BaseBoolInt component36() {
        return this.wallReplyDelete;
    }

    @NotNull
    public final BaseBoolInt component37() {
        return this.wallReplyEdit;
    }

    @NotNull
    public final BaseBoolInt component38() {
        return this.wallReplyNew;
    }

    @NotNull
    public final BaseBoolInt component39() {
        return this.wallReplyRestore;
    }

    @NotNull
    public final BaseBoolInt component4() {
        return this.boardPostNew;
    }

    @NotNull
    public final BaseBoolInt component40() {
        return this.wallRepost;
    }

    @NotNull
    public final BaseBoolInt component41() {
        return this.donutSubscriptionCreate;
    }

    @NotNull
    public final BaseBoolInt component42() {
        return this.donutSubscriptionProlonged;
    }

    @NotNull
    public final BaseBoolInt component43() {
        return this.donutSubscriptionCancelled;
    }

    @NotNull
    public final BaseBoolInt component44() {
        return this.donutSubscriptionExpired;
    }

    @NotNull
    public final BaseBoolInt component45() {
        return this.donutSubscriptionPriceChanged;
    }

    @NotNull
    public final BaseBoolInt component46() {
        return this.donutMoneyWithdraw;
    }

    @NotNull
    public final BaseBoolInt component47() {
        return this.donutMoneyWithdrawError;
    }

    @Nullable
    public final BaseBoolInt component48() {
        return this.leadFormsNew;
    }

    @Nullable
    public final BaseBoolInt component49() {
        return this.marketOrderNew;
    }

    @NotNull
    public final BaseBoolInt component5() {
        return this.boardPostRestore;
    }

    @Nullable
    public final BaseBoolInt component50() {
        return this.marketOrderEdit;
    }

    @NotNull
    public final BaseBoolInt component6() {
        return this.groupChangePhoto;
    }

    @NotNull
    public final BaseBoolInt component7() {
        return this.groupChangeSettings;
    }

    @NotNull
    public final BaseBoolInt component8() {
        return this.groupJoin;
    }

    @NotNull
    public final BaseBoolInt component9() {
        return this.groupLeave;
    }

    @NotNull
    public final GroupsLongPollEvents copy(@NotNull BaseBoolInt audioNew, @NotNull BaseBoolInt boardPostDelete, @NotNull BaseBoolInt boardPostEdit, @NotNull BaseBoolInt boardPostNew, @NotNull BaseBoolInt boardPostRestore, @NotNull BaseBoolInt groupChangePhoto, @NotNull BaseBoolInt groupChangeSettings, @NotNull BaseBoolInt groupJoin, @NotNull BaseBoolInt groupLeave, @NotNull BaseBoolInt groupOfficersEdit, @NotNull BaseBoolInt marketCommentDelete, @NotNull BaseBoolInt marketCommentEdit, @NotNull BaseBoolInt marketCommentNew, @NotNull BaseBoolInt marketCommentRestore, @NotNull BaseBoolInt messageAllow, @NotNull BaseBoolInt messageDeny, @NotNull BaseBoolInt messageNew, @NotNull BaseBoolInt messageRead, @NotNull BaseBoolInt messageReply, @NotNull BaseBoolInt messageTypingState, @NotNull BaseBoolInt messageEdit, @NotNull BaseBoolInt photoCommentDelete, @NotNull BaseBoolInt photoCommentEdit, @NotNull BaseBoolInt photoCommentNew, @NotNull BaseBoolInt photoCommentRestore, @NotNull BaseBoolInt photoNew, @NotNull BaseBoolInt pollVoteNew, @NotNull BaseBoolInt userBlock, @NotNull BaseBoolInt userUnblock, @NotNull BaseBoolInt videoCommentDelete, @NotNull BaseBoolInt videoCommentEdit, @NotNull BaseBoolInt videoCommentNew, @NotNull BaseBoolInt videoCommentRestore, @NotNull BaseBoolInt videoNew, @NotNull BaseBoolInt wallPostNew, @NotNull BaseBoolInt wallReplyDelete, @NotNull BaseBoolInt wallReplyEdit, @NotNull BaseBoolInt wallReplyNew, @NotNull BaseBoolInt wallReplyRestore, @NotNull BaseBoolInt wallRepost, @NotNull BaseBoolInt donutSubscriptionCreate, @NotNull BaseBoolInt donutSubscriptionProlonged, @NotNull BaseBoolInt donutSubscriptionCancelled, @NotNull BaseBoolInt donutSubscriptionExpired, @NotNull BaseBoolInt donutSubscriptionPriceChanged, @NotNull BaseBoolInt donutMoneyWithdraw, @NotNull BaseBoolInt donutMoneyWithdrawError, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3) {
        Intrinsics.checkNotNullParameter(audioNew, "audioNew");
        Intrinsics.checkNotNullParameter(boardPostDelete, "boardPostDelete");
        Intrinsics.checkNotNullParameter(boardPostEdit, "boardPostEdit");
        Intrinsics.checkNotNullParameter(boardPostNew, "boardPostNew");
        Intrinsics.checkNotNullParameter(boardPostRestore, "boardPostRestore");
        Intrinsics.checkNotNullParameter(groupChangePhoto, "groupChangePhoto");
        Intrinsics.checkNotNullParameter(groupChangeSettings, "groupChangeSettings");
        Intrinsics.checkNotNullParameter(groupJoin, "groupJoin");
        Intrinsics.checkNotNullParameter(groupLeave, "groupLeave");
        Intrinsics.checkNotNullParameter(groupOfficersEdit, "groupOfficersEdit");
        Intrinsics.checkNotNullParameter(marketCommentDelete, "marketCommentDelete");
        Intrinsics.checkNotNullParameter(marketCommentEdit, "marketCommentEdit");
        Intrinsics.checkNotNullParameter(marketCommentNew, "marketCommentNew");
        Intrinsics.checkNotNullParameter(marketCommentRestore, "marketCommentRestore");
        Intrinsics.checkNotNullParameter(messageAllow, "messageAllow");
        Intrinsics.checkNotNullParameter(messageDeny, "messageDeny");
        Intrinsics.checkNotNullParameter(messageNew, "messageNew");
        Intrinsics.checkNotNullParameter(messageRead, "messageRead");
        Intrinsics.checkNotNullParameter(messageReply, "messageReply");
        Intrinsics.checkNotNullParameter(messageTypingState, "messageTypingState");
        Intrinsics.checkNotNullParameter(messageEdit, "messageEdit");
        Intrinsics.checkNotNullParameter(photoCommentDelete, "photoCommentDelete");
        Intrinsics.checkNotNullParameter(photoCommentEdit, "photoCommentEdit");
        Intrinsics.checkNotNullParameter(photoCommentNew, "photoCommentNew");
        Intrinsics.checkNotNullParameter(photoCommentRestore, "photoCommentRestore");
        Intrinsics.checkNotNullParameter(photoNew, "photoNew");
        Intrinsics.checkNotNullParameter(pollVoteNew, "pollVoteNew");
        Intrinsics.checkNotNullParameter(userBlock, "userBlock");
        Intrinsics.checkNotNullParameter(userUnblock, "userUnblock");
        Intrinsics.checkNotNullParameter(videoCommentDelete, "videoCommentDelete");
        Intrinsics.checkNotNullParameter(videoCommentEdit, "videoCommentEdit");
        Intrinsics.checkNotNullParameter(videoCommentNew, "videoCommentNew");
        Intrinsics.checkNotNullParameter(videoCommentRestore, "videoCommentRestore");
        Intrinsics.checkNotNullParameter(videoNew, "videoNew");
        Intrinsics.checkNotNullParameter(wallPostNew, "wallPostNew");
        Intrinsics.checkNotNullParameter(wallReplyDelete, "wallReplyDelete");
        Intrinsics.checkNotNullParameter(wallReplyEdit, "wallReplyEdit");
        Intrinsics.checkNotNullParameter(wallReplyNew, "wallReplyNew");
        Intrinsics.checkNotNullParameter(wallReplyRestore, "wallReplyRestore");
        Intrinsics.checkNotNullParameter(wallRepost, "wallRepost");
        Intrinsics.checkNotNullParameter(donutSubscriptionCreate, "donutSubscriptionCreate");
        Intrinsics.checkNotNullParameter(donutSubscriptionProlonged, "donutSubscriptionProlonged");
        Intrinsics.checkNotNullParameter(donutSubscriptionCancelled, "donutSubscriptionCancelled");
        Intrinsics.checkNotNullParameter(donutSubscriptionExpired, "donutSubscriptionExpired");
        Intrinsics.checkNotNullParameter(donutSubscriptionPriceChanged, "donutSubscriptionPriceChanged");
        Intrinsics.checkNotNullParameter(donutMoneyWithdraw, "donutMoneyWithdraw");
        Intrinsics.checkNotNullParameter(donutMoneyWithdrawError, "donutMoneyWithdrawError");
        return new GroupsLongPollEvents(audioNew, boardPostDelete, boardPostEdit, boardPostNew, boardPostRestore, groupChangePhoto, groupChangeSettings, groupJoin, groupLeave, groupOfficersEdit, marketCommentDelete, marketCommentEdit, marketCommentNew, marketCommentRestore, messageAllow, messageDeny, messageNew, messageRead, messageReply, messageTypingState, messageEdit, photoCommentDelete, photoCommentEdit, photoCommentNew, photoCommentRestore, photoNew, pollVoteNew, userBlock, userUnblock, videoCommentDelete, videoCommentEdit, videoCommentNew, videoCommentRestore, videoNew, wallPostNew, wallReplyDelete, wallReplyEdit, wallReplyNew, wallReplyRestore, wallRepost, donutSubscriptionCreate, donutSubscriptionProlonged, donutSubscriptionCancelled, donutSubscriptionExpired, donutSubscriptionPriceChanged, donutMoneyWithdraw, donutMoneyWithdrawError, baseBoolInt, baseBoolInt2, baseBoolInt3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsLongPollEvents) {
            GroupsLongPollEvents groupsLongPollEvents = (GroupsLongPollEvents) obj;
            return this.audioNew == groupsLongPollEvents.audioNew && this.boardPostDelete == groupsLongPollEvents.boardPostDelete && this.boardPostEdit == groupsLongPollEvents.boardPostEdit && this.boardPostNew == groupsLongPollEvents.boardPostNew && this.boardPostRestore == groupsLongPollEvents.boardPostRestore && this.groupChangePhoto == groupsLongPollEvents.groupChangePhoto && this.groupChangeSettings == groupsLongPollEvents.groupChangeSettings && this.groupJoin == groupsLongPollEvents.groupJoin && this.groupLeave == groupsLongPollEvents.groupLeave && this.groupOfficersEdit == groupsLongPollEvents.groupOfficersEdit && this.marketCommentDelete == groupsLongPollEvents.marketCommentDelete && this.marketCommentEdit == groupsLongPollEvents.marketCommentEdit && this.marketCommentNew == groupsLongPollEvents.marketCommentNew && this.marketCommentRestore == groupsLongPollEvents.marketCommentRestore && this.messageAllow == groupsLongPollEvents.messageAllow && this.messageDeny == groupsLongPollEvents.messageDeny && this.messageNew == groupsLongPollEvents.messageNew && this.messageRead == groupsLongPollEvents.messageRead && this.messageReply == groupsLongPollEvents.messageReply && this.messageTypingState == groupsLongPollEvents.messageTypingState && this.messageEdit == groupsLongPollEvents.messageEdit && this.photoCommentDelete == groupsLongPollEvents.photoCommentDelete && this.photoCommentEdit == groupsLongPollEvents.photoCommentEdit && this.photoCommentNew == groupsLongPollEvents.photoCommentNew && this.photoCommentRestore == groupsLongPollEvents.photoCommentRestore && this.photoNew == groupsLongPollEvents.photoNew && this.pollVoteNew == groupsLongPollEvents.pollVoteNew && this.userBlock == groupsLongPollEvents.userBlock && this.userUnblock == groupsLongPollEvents.userUnblock && this.videoCommentDelete == groupsLongPollEvents.videoCommentDelete && this.videoCommentEdit == groupsLongPollEvents.videoCommentEdit && this.videoCommentNew == groupsLongPollEvents.videoCommentNew && this.videoCommentRestore == groupsLongPollEvents.videoCommentRestore && this.videoNew == groupsLongPollEvents.videoNew && this.wallPostNew == groupsLongPollEvents.wallPostNew && this.wallReplyDelete == groupsLongPollEvents.wallReplyDelete && this.wallReplyEdit == groupsLongPollEvents.wallReplyEdit && this.wallReplyNew == groupsLongPollEvents.wallReplyNew && this.wallReplyRestore == groupsLongPollEvents.wallReplyRestore && this.wallRepost == groupsLongPollEvents.wallRepost && this.donutSubscriptionCreate == groupsLongPollEvents.donutSubscriptionCreate && this.donutSubscriptionProlonged == groupsLongPollEvents.donutSubscriptionProlonged && this.donutSubscriptionCancelled == groupsLongPollEvents.donutSubscriptionCancelled && this.donutSubscriptionExpired == groupsLongPollEvents.donutSubscriptionExpired && this.donutSubscriptionPriceChanged == groupsLongPollEvents.donutSubscriptionPriceChanged && this.donutMoneyWithdraw == groupsLongPollEvents.donutMoneyWithdraw && this.donutMoneyWithdrawError == groupsLongPollEvents.donutMoneyWithdrawError && this.leadFormsNew == groupsLongPollEvents.leadFormsNew && this.marketOrderNew == groupsLongPollEvents.marketOrderNew && this.marketOrderEdit == groupsLongPollEvents.marketOrderEdit;
        }
        return false;
    }

    @NotNull
    public final BaseBoolInt getAudioNew() {
        return this.audioNew;
    }

    @NotNull
    public final BaseBoolInt getBoardPostDelete() {
        return this.boardPostDelete;
    }

    @NotNull
    public final BaseBoolInt getBoardPostEdit() {
        return this.boardPostEdit;
    }

    @NotNull
    public final BaseBoolInt getBoardPostNew() {
        return this.boardPostNew;
    }

    @NotNull
    public final BaseBoolInt getBoardPostRestore() {
        return this.boardPostRestore;
    }

    @NotNull
    public final BaseBoolInt getDonutMoneyWithdraw() {
        return this.donutMoneyWithdraw;
    }

    @NotNull
    public final BaseBoolInt getDonutMoneyWithdrawError() {
        return this.donutMoneyWithdrawError;
    }

    @NotNull
    public final BaseBoolInt getDonutSubscriptionCancelled() {
        return this.donutSubscriptionCancelled;
    }

    @NotNull
    public final BaseBoolInt getDonutSubscriptionCreate() {
        return this.donutSubscriptionCreate;
    }

    @NotNull
    public final BaseBoolInt getDonutSubscriptionExpired() {
        return this.donutSubscriptionExpired;
    }

    @NotNull
    public final BaseBoolInt getDonutSubscriptionPriceChanged() {
        return this.donutSubscriptionPriceChanged;
    }

    @NotNull
    public final BaseBoolInt getDonutSubscriptionProlonged() {
        return this.donutSubscriptionProlonged;
    }

    @NotNull
    public final BaseBoolInt getGroupChangePhoto() {
        return this.groupChangePhoto;
    }

    @NotNull
    public final BaseBoolInt getGroupChangeSettings() {
        return this.groupChangeSettings;
    }

    @NotNull
    public final BaseBoolInt getGroupJoin() {
        return this.groupJoin;
    }

    @NotNull
    public final BaseBoolInt getGroupLeave() {
        return this.groupLeave;
    }

    @NotNull
    public final BaseBoolInt getGroupOfficersEdit() {
        return this.groupOfficersEdit;
    }

    @Nullable
    public final BaseBoolInt getLeadFormsNew() {
        return this.leadFormsNew;
    }

    @NotNull
    public final BaseBoolInt getMarketCommentDelete() {
        return this.marketCommentDelete;
    }

    @NotNull
    public final BaseBoolInt getMarketCommentEdit() {
        return this.marketCommentEdit;
    }

    @NotNull
    public final BaseBoolInt getMarketCommentNew() {
        return this.marketCommentNew;
    }

    @NotNull
    public final BaseBoolInt getMarketCommentRestore() {
        return this.marketCommentRestore;
    }

    @Nullable
    public final BaseBoolInt getMarketOrderEdit() {
        return this.marketOrderEdit;
    }

    @Nullable
    public final BaseBoolInt getMarketOrderNew() {
        return this.marketOrderNew;
    }

    @NotNull
    public final BaseBoolInt getMessageAllow() {
        return this.messageAllow;
    }

    @NotNull
    public final BaseBoolInt getMessageDeny() {
        return this.messageDeny;
    }

    @NotNull
    public final BaseBoolInt getMessageEdit() {
        return this.messageEdit;
    }

    @NotNull
    public final BaseBoolInt getMessageNew() {
        return this.messageNew;
    }

    @NotNull
    public final BaseBoolInt getMessageRead() {
        return this.messageRead;
    }

    @NotNull
    public final BaseBoolInt getMessageReply() {
        return this.messageReply;
    }

    @NotNull
    public final BaseBoolInt getMessageTypingState() {
        return this.messageTypingState;
    }

    @NotNull
    public final BaseBoolInt getPhotoCommentDelete() {
        return this.photoCommentDelete;
    }

    @NotNull
    public final BaseBoolInt getPhotoCommentEdit() {
        return this.photoCommentEdit;
    }

    @NotNull
    public final BaseBoolInt getPhotoCommentNew() {
        return this.photoCommentNew;
    }

    @NotNull
    public final BaseBoolInt getPhotoCommentRestore() {
        return this.photoCommentRestore;
    }

    @NotNull
    public final BaseBoolInt getPhotoNew() {
        return this.photoNew;
    }

    @NotNull
    public final BaseBoolInt getPollVoteNew() {
        return this.pollVoteNew;
    }

    @NotNull
    public final BaseBoolInt getUserBlock() {
        return this.userBlock;
    }

    @NotNull
    public final BaseBoolInt getUserUnblock() {
        return this.userUnblock;
    }

    @NotNull
    public final BaseBoolInt getVideoCommentDelete() {
        return this.videoCommentDelete;
    }

    @NotNull
    public final BaseBoolInt getVideoCommentEdit() {
        return this.videoCommentEdit;
    }

    @NotNull
    public final BaseBoolInt getVideoCommentNew() {
        return this.videoCommentNew;
    }

    @NotNull
    public final BaseBoolInt getVideoCommentRestore() {
        return this.videoCommentRestore;
    }

    @NotNull
    public final BaseBoolInt getVideoNew() {
        return this.videoNew;
    }

    @NotNull
    public final BaseBoolInt getWallPostNew() {
        return this.wallPostNew;
    }

    @NotNull
    public final BaseBoolInt getWallReplyDelete() {
        return this.wallReplyDelete;
    }

    @NotNull
    public final BaseBoolInt getWallReplyEdit() {
        return this.wallReplyEdit;
    }

    @NotNull
    public final BaseBoolInt getWallReplyNew() {
        return this.wallReplyNew;
    }

    @NotNull
    public final BaseBoolInt getWallReplyRestore() {
        return this.wallReplyRestore;
    }

    @NotNull
    public final BaseBoolInt getWallRepost() {
        return this.wallRepost;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((this.audioNew.hashCode() * 31) + this.boardPostDelete.hashCode()) * 31) + this.boardPostEdit.hashCode()) * 31) + this.boardPostNew.hashCode()) * 31) + this.boardPostRestore.hashCode()) * 31) + this.groupChangePhoto.hashCode()) * 31) + this.groupChangeSettings.hashCode()) * 31) + this.groupJoin.hashCode()) * 31) + this.groupLeave.hashCode()) * 31) + this.groupOfficersEdit.hashCode()) * 31) + this.marketCommentDelete.hashCode()) * 31) + this.marketCommentEdit.hashCode()) * 31) + this.marketCommentNew.hashCode()) * 31) + this.marketCommentRestore.hashCode()) * 31) + this.messageAllow.hashCode()) * 31) + this.messageDeny.hashCode()) * 31) + this.messageNew.hashCode()) * 31) + this.messageRead.hashCode()) * 31) + this.messageReply.hashCode()) * 31) + this.messageTypingState.hashCode()) * 31) + this.messageEdit.hashCode()) * 31) + this.photoCommentDelete.hashCode()) * 31) + this.photoCommentEdit.hashCode()) * 31) + this.photoCommentNew.hashCode()) * 31) + this.photoCommentRestore.hashCode()) * 31) + this.photoNew.hashCode()) * 31) + this.pollVoteNew.hashCode()) * 31) + this.userBlock.hashCode()) * 31) + this.userUnblock.hashCode()) * 31) + this.videoCommentDelete.hashCode()) * 31) + this.videoCommentEdit.hashCode()) * 31) + this.videoCommentNew.hashCode()) * 31) + this.videoCommentRestore.hashCode()) * 31) + this.videoNew.hashCode()) * 31) + this.wallPostNew.hashCode()) * 31) + this.wallReplyDelete.hashCode()) * 31) + this.wallReplyEdit.hashCode()) * 31) + this.wallReplyNew.hashCode()) * 31) + this.wallReplyRestore.hashCode()) * 31) + this.wallRepost.hashCode()) * 31) + this.donutSubscriptionCreate.hashCode()) * 31) + this.donutSubscriptionProlonged.hashCode()) * 31) + this.donutSubscriptionCancelled.hashCode()) * 31) + this.donutSubscriptionExpired.hashCode()) * 31) + this.donutSubscriptionPriceChanged.hashCode()) * 31) + this.donutMoneyWithdraw.hashCode()) * 31) + this.donutMoneyWithdrawError.hashCode()) * 31;
        BaseBoolInt baseBoolInt = this.leadFormsNew;
        int hashCode2 = (hashCode + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.marketOrderNew;
        int hashCode3 = (hashCode2 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        BaseBoolInt baseBoolInt3 = this.marketOrderEdit;
        return hashCode3 + (baseBoolInt3 != null ? baseBoolInt3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        BaseBoolInt baseBoolInt = this.audioNew;
        BaseBoolInt baseBoolInt2 = this.boardPostDelete;
        BaseBoolInt baseBoolInt3 = this.boardPostEdit;
        BaseBoolInt baseBoolInt4 = this.boardPostNew;
        BaseBoolInt baseBoolInt5 = this.boardPostRestore;
        BaseBoolInt baseBoolInt6 = this.groupChangePhoto;
        BaseBoolInt baseBoolInt7 = this.groupChangeSettings;
        BaseBoolInt baseBoolInt8 = this.groupJoin;
        BaseBoolInt baseBoolInt9 = this.groupLeave;
        BaseBoolInt baseBoolInt10 = this.groupOfficersEdit;
        BaseBoolInt baseBoolInt11 = this.marketCommentDelete;
        BaseBoolInt baseBoolInt12 = this.marketCommentEdit;
        BaseBoolInt baseBoolInt13 = this.marketCommentNew;
        BaseBoolInt baseBoolInt14 = this.marketCommentRestore;
        BaseBoolInt baseBoolInt15 = this.messageAllow;
        BaseBoolInt baseBoolInt16 = this.messageDeny;
        BaseBoolInt baseBoolInt17 = this.messageNew;
        BaseBoolInt baseBoolInt18 = this.messageRead;
        BaseBoolInt baseBoolInt19 = this.messageReply;
        BaseBoolInt baseBoolInt20 = this.messageTypingState;
        BaseBoolInt baseBoolInt21 = this.messageEdit;
        BaseBoolInt baseBoolInt22 = this.photoCommentDelete;
        BaseBoolInt baseBoolInt23 = this.photoCommentEdit;
        BaseBoolInt baseBoolInt24 = this.photoCommentNew;
        BaseBoolInt baseBoolInt25 = this.photoCommentRestore;
        BaseBoolInt baseBoolInt26 = this.photoNew;
        BaseBoolInt baseBoolInt27 = this.pollVoteNew;
        BaseBoolInt baseBoolInt28 = this.userBlock;
        BaseBoolInt baseBoolInt29 = this.userUnblock;
        BaseBoolInt baseBoolInt30 = this.videoCommentDelete;
        BaseBoolInt baseBoolInt31 = this.videoCommentEdit;
        BaseBoolInt baseBoolInt32 = this.videoCommentNew;
        BaseBoolInt baseBoolInt33 = this.videoCommentRestore;
        BaseBoolInt baseBoolInt34 = this.videoNew;
        BaseBoolInt baseBoolInt35 = this.wallPostNew;
        BaseBoolInt baseBoolInt36 = this.wallReplyDelete;
        BaseBoolInt baseBoolInt37 = this.wallReplyEdit;
        BaseBoolInt baseBoolInt38 = this.wallReplyNew;
        BaseBoolInt baseBoolInt39 = this.wallReplyRestore;
        BaseBoolInt baseBoolInt40 = this.wallRepost;
        BaseBoolInt baseBoolInt41 = this.donutSubscriptionCreate;
        BaseBoolInt baseBoolInt42 = this.donutSubscriptionProlonged;
        BaseBoolInt baseBoolInt43 = this.donutSubscriptionCancelled;
        BaseBoolInt baseBoolInt44 = this.donutSubscriptionExpired;
        BaseBoolInt baseBoolInt45 = this.donutSubscriptionPriceChanged;
        BaseBoolInt baseBoolInt46 = this.donutMoneyWithdraw;
        BaseBoolInt baseBoolInt47 = this.donutMoneyWithdrawError;
        BaseBoolInt baseBoolInt48 = this.leadFormsNew;
        BaseBoolInt baseBoolInt49 = this.marketOrderNew;
        BaseBoolInt baseBoolInt50 = this.marketOrderEdit;
        return "GroupsLongPollEvents(audioNew=" + baseBoolInt + ", boardPostDelete=" + baseBoolInt2 + ", boardPostEdit=" + baseBoolInt3 + ", boardPostNew=" + baseBoolInt4 + ", boardPostRestore=" + baseBoolInt5 + ", groupChangePhoto=" + baseBoolInt6 + ", groupChangeSettings=" + baseBoolInt7 + ", groupJoin=" + baseBoolInt8 + ", groupLeave=" + baseBoolInt9 + ", groupOfficersEdit=" + baseBoolInt10 + ", marketCommentDelete=" + baseBoolInt11 + ", marketCommentEdit=" + baseBoolInt12 + ", marketCommentNew=" + baseBoolInt13 + ", marketCommentRestore=" + baseBoolInt14 + ", messageAllow=" + baseBoolInt15 + ", messageDeny=" + baseBoolInt16 + ", messageNew=" + baseBoolInt17 + ", messageRead=" + baseBoolInt18 + ", messageReply=" + baseBoolInt19 + ", messageTypingState=" + baseBoolInt20 + ", messageEdit=" + baseBoolInt21 + ", photoCommentDelete=" + baseBoolInt22 + ", photoCommentEdit=" + baseBoolInt23 + ", photoCommentNew=" + baseBoolInt24 + ", photoCommentRestore=" + baseBoolInt25 + ", photoNew=" + baseBoolInt26 + ", pollVoteNew=" + baseBoolInt27 + ", userBlock=" + baseBoolInt28 + ", userUnblock=" + baseBoolInt29 + ", videoCommentDelete=" + baseBoolInt30 + ", videoCommentEdit=" + baseBoolInt31 + ", videoCommentNew=" + baseBoolInt32 + ", videoCommentRestore=" + baseBoolInt33 + ", videoNew=" + baseBoolInt34 + ", wallPostNew=" + baseBoolInt35 + ", wallReplyDelete=" + baseBoolInt36 + ", wallReplyEdit=" + baseBoolInt37 + ", wallReplyNew=" + baseBoolInt38 + ", wallReplyRestore=" + baseBoolInt39 + ", wallRepost=" + baseBoolInt40 + ", donutSubscriptionCreate=" + baseBoolInt41 + ", donutSubscriptionProlonged=" + baseBoolInt42 + ", donutSubscriptionCancelled=" + baseBoolInt43 + ", donutSubscriptionExpired=" + baseBoolInt44 + ", donutSubscriptionPriceChanged=" + baseBoolInt45 + ", donutMoneyWithdraw=" + baseBoolInt46 + ", donutMoneyWithdrawError=" + baseBoolInt47 + ", leadFormsNew=" + baseBoolInt48 + ", marketOrderNew=" + baseBoolInt49 + ", marketOrderEdit=" + baseBoolInt50 + ")";
    }

    public /* synthetic */ GroupsLongPollEvents(BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, BaseBoolInt baseBoolInt3, BaseBoolInt baseBoolInt4, BaseBoolInt baseBoolInt5, BaseBoolInt baseBoolInt6, BaseBoolInt baseBoolInt7, BaseBoolInt baseBoolInt8, BaseBoolInt baseBoolInt9, BaseBoolInt baseBoolInt10, BaseBoolInt baseBoolInt11, BaseBoolInt baseBoolInt12, BaseBoolInt baseBoolInt13, BaseBoolInt baseBoolInt14, BaseBoolInt baseBoolInt15, BaseBoolInt baseBoolInt16, BaseBoolInt baseBoolInt17, BaseBoolInt baseBoolInt18, BaseBoolInt baseBoolInt19, BaseBoolInt baseBoolInt20, BaseBoolInt baseBoolInt21, BaseBoolInt baseBoolInt22, BaseBoolInt baseBoolInt23, BaseBoolInt baseBoolInt24, BaseBoolInt baseBoolInt25, BaseBoolInt baseBoolInt26, BaseBoolInt baseBoolInt27, BaseBoolInt baseBoolInt28, BaseBoolInt baseBoolInt29, BaseBoolInt baseBoolInt30, BaseBoolInt baseBoolInt31, BaseBoolInt baseBoolInt32, BaseBoolInt baseBoolInt33, BaseBoolInt baseBoolInt34, BaseBoolInt baseBoolInt35, BaseBoolInt baseBoolInt36, BaseBoolInt baseBoolInt37, BaseBoolInt baseBoolInt38, BaseBoolInt baseBoolInt39, BaseBoolInt baseBoolInt40, BaseBoolInt baseBoolInt41, BaseBoolInt baseBoolInt42, BaseBoolInt baseBoolInt43, BaseBoolInt baseBoolInt44, BaseBoolInt baseBoolInt45, BaseBoolInt baseBoolInt46, BaseBoolInt baseBoolInt47, BaseBoolInt baseBoolInt48, BaseBoolInt baseBoolInt49, BaseBoolInt baseBoolInt50, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(baseBoolInt, baseBoolInt2, baseBoolInt3, baseBoolInt4, baseBoolInt5, baseBoolInt6, baseBoolInt7, baseBoolInt8, baseBoolInt9, baseBoolInt10, baseBoolInt11, baseBoolInt12, baseBoolInt13, baseBoolInt14, baseBoolInt15, baseBoolInt16, baseBoolInt17, baseBoolInt18, baseBoolInt19, baseBoolInt20, baseBoolInt21, baseBoolInt22, baseBoolInt23, baseBoolInt24, baseBoolInt25, baseBoolInt26, baseBoolInt27, baseBoolInt28, baseBoolInt29, baseBoolInt30, baseBoolInt31, baseBoolInt32, baseBoolInt33, baseBoolInt34, baseBoolInt35, baseBoolInt36, baseBoolInt37, baseBoolInt38, baseBoolInt39, baseBoolInt40, baseBoolInt41, baseBoolInt42, baseBoolInt43, baseBoolInt44, baseBoolInt45, baseBoolInt46, baseBoolInt47, (i10 & 32768) != 0 ? null : baseBoolInt48, (i10 & 65536) != 0 ? null : baseBoolInt49, (i10 & 131072) != 0 ? null : baseBoolInt50);
    }
}
